.class Lcom/metamoji/nt/itemlist/NtPageList$7$1;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtPageList$7;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$7;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtPageList$7;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtPageList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$7;

    iget v1, v1, Lcom/metamoji/nt/itemlist/NtPageList$7;->val$position:I

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtPageList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$7;

    iget-boolean v2, v2, Lcom/metamoji/nt/itemlist/NtPageList$7;->val$needScroll:Z

    iget-object v3, p0, Lcom/metamoji/nt/itemlist/NtPageList$7$1;->this$1:Lcom/metamoji/nt/itemlist/NtPageList$7;

    iget-boolean v3, v3, Lcom/metamoji/nt/itemlist/NtPageList$7;->val$needNotifyToNote:Z

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/nt/itemlist/NtPageList;->-$$Nest$mselectPage(Lcom/metamoji/nt/itemlist/NtPageList;IZZ)V

    return-void
.end method
