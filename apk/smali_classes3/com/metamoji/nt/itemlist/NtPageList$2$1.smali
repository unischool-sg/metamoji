.class Lcom/metamoji/nt/itemlist/NtPageList$2$1;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList$2;->invoke(Lcom/metamoji/nt/NtPageController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtPageList$2;

.field final synthetic val$arg:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList$2;Lcom/metamoji/nt/NtPageController;)V
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

    .line 119
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$2$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$2;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$2$1;->val$arg:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$2$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$2;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtPageList$2;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList$2$1;->val$arg:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->onThumbnailChanged(Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method
