.class Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;
.super Ljava/lang/Object;
.source "NtPageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtPageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuOptions"
.end annotation


# instance fields
.field public n:I

.field public position:I

.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtPageList;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->position:I

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;->n:I

    return-void
.end method
