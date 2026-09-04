.class Lcom/metamoji/nt/NtUnitEditUserInfoView$1;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->clearPopupInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$1;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$1;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$1;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    .line 159
    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v3, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$1;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->removeView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->setPopupLabel(Landroid/view/View;)V

    .line 162
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->setTargetUnit(Lcom/metamoji/nt/NtUnitController;)V

    goto :goto_1

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$1;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 166
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$1;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/util/HashMap;)V

    :cond_2
    return-void
.end method
