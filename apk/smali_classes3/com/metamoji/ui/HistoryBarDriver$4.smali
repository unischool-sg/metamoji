.class Lcom/metamoji/ui/HistoryBarDriver$4;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->onMruItemOpened(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;I)V
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

    .line 1045
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$4;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iput p2, p0, Lcom/metamoji/ui/HistoryBarDriver$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$4;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iget v1, p0, Lcom/metamoji/ui/HistoryBarDriver$4;->val$index:I

    invoke-static {v0, v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mensureTabVisible(Lcom/metamoji/ui/HistoryBarDriver;I)V

    .line 1049
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$4;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-virtual {v0}, Lcom/metamoji/ui/HistoryBarDriver;->selectItem()V

    .line 1051
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$4;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v0}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mcurrentIndex(Lcom/metamoji/ui/HistoryBarDriver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mtabAt(Lcom/metamoji/ui/HistoryBarDriver;I)Lcom/metamoji/ui/HistoryTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$4;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$mgetCurrentDocumentInfo(Lcom/metamoji/ui/HistoryBarDriver;)V

    .line 1056
    iget-object v1, p0, Lcom/metamoji/ui/HistoryBarDriver$4;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-static {v1}, Lcom/metamoji/ui/HistoryBarDriver;->-$$Nest$fgetmDocInfo(Lcom/metamoji/ui/HistoryBarDriver;)Lcom/metamoji/nt/NtMRUDocList$DocInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/HistoryTab;->setText(Ljava/lang/String;)V

    return-void
.end method
