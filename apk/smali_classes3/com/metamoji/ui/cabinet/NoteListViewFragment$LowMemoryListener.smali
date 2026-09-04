.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LowMemoryListener"
.end annotation


# instance fields
.field mCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 3722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3723
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;->mCache:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public didReceiveMemoryWarning()V
    .locals 1

    .line 3731
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;->mCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 3738
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$LowMemoryListener;->mCache:Ljava/util/WeakHashMap;

    return-void
.end method
