.class Lcom/metamoji/nt/NtUnitEditUserInfoView$5;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabels()V
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

    .line 438
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$5;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$5;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$5;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 446
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 447
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    .line 448
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$5;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getTargetUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$mlayoutLabel(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V

    goto :goto_1

    :cond_1
    return-void
.end method
