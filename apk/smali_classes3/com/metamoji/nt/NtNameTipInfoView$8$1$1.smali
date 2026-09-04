.class Lcom/metamoji/nt/NtNameTipInfoView$8$1$1;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/nt/NtNameTipInfoView$8$1;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView$8$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 576
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$8$1$1;->this$2:Lcom/metamoji/nt/NtNameTipInfoView$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$8$1$1;->this$2:Lcom/metamoji/nt/NtNameTipInfoView$8$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtNameTipInfoView$8$1;->this$1:Lcom/metamoji/nt/NtNameTipInfoView$8;

    iget-object v0, v0, Lcom/metamoji/nt/NtNameTipInfoView$8;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    iget-object v1, p0, Lcom/metamoji/nt/NtNameTipInfoView$8$1$1;->this$2:Lcom/metamoji/nt/NtNameTipInfoView$8$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtNameTipInfoView$8$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$8$1$1;->this$2:Lcom/metamoji/nt/NtNameTipInfoView$8$1;

    iget-object v2, v2, Lcom/metamoji/nt/NtNameTipInfoView$8$1;->val$labelInfo:Lcom/metamoji/nt/NtNameTipLabelInfo;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtNameTipInfoView;->removePopupLabel(Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    return-void
.end method
