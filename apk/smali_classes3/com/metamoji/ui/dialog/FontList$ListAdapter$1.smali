.class Lcom/metamoji/ui/dialog/FontList$ListAdapter$1;
.super Ljava/lang/Object;
.source "FontList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/FontList$ListAdapter;-><init>(Lcom/metamoji/ui/dialog/FontList;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/un/text/FontInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/FontList$ListAdapter;

.field final synthetic val$this$0:Lcom/metamoji/ui/dialog/FontList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/FontList$ListAdapter;Lcom/metamoji/ui/dialog/FontList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter$1;->this$1:Lcom/metamoji/ui/dialog/FontList$ListAdapter;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter$1;->val$this$0:Lcom/metamoji/ui/dialog/FontList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/un/text/FontInfo;Lcom/metamoji/un/text/FontInfo;)I
    .locals 2

    .line 111
    iget-object v0, p1, Lcom/metamoji/un/text/FontInfo;->fontId:Lcom/metamoji/un/text/FontId;

    sget-object v1, Lcom/metamoji/un/text/FontId;->SystemFont:Lcom/metamoji/un/text/FontId;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    iget-object v0, p2, Lcom/metamoji/un/text/FontInfo;->fontId:Lcom/metamoji/un/text/FontId;

    sget-object v1, Lcom/metamoji/un/text/FontId;->SystemFont:Lcom/metamoji/un/text/FontId;

    if-ne v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 113
    :cond_1
    iget-object p1, p1, Lcom/metamoji/un/text/FontInfo;->dispName:Ljava/lang/String;

    iget-object p2, p2, Lcom/metamoji/un/text/FontInfo;->dispName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 108
    check-cast p1, Lcom/metamoji/un/text/FontInfo;

    check-cast p2, Lcom/metamoji/un/text/FontInfo;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/FontList$ListAdapter$1;->compare(Lcom/metamoji/un/text/FontInfo;Lcom/metamoji/un/text/FontInfo;)I

    move-result p1

    return p1
.end method
