.class Lcom/metamoji/nt/NtNameTipInfoView$10;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView;->updateLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 658
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$10;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$10;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 662
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 663
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtNameTipLabelInfo;

    .line 664
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$10;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v2, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$mupdateLabel(Lcom/metamoji/nt/NtNameTipInfoView;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    .line 665
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$10;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNameTipLabelInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$mlayoutLabel(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/lang/String;Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
