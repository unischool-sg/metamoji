.class public Lcom/metamoji/nt/itemlist/NtItemList$Selection;
.super Ljava/lang/Object;
.source "NtItemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Selection"
.end annotation


# instance fields
.field public index:I

.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;

.field public view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->view:Landroid/view/View;

    .line 62
    iput p3, p0, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->index:I

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$Selection;->view:Landroid/view/View;

    return-void
.end method
