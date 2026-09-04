.class Lcom/metamoji/un/text/UnTextEditUserInfoView$6;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 455
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$6;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$6;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$6;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 463
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 464
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    .line 465
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$6;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getTargetTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$mlayoutLabel(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    goto :goto_1

    :cond_1
    return-void
.end method
