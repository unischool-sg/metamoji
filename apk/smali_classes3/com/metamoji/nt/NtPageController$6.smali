.class Lcom/metamoji/nt/NtPageController$6;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->notifyPageActivated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2924
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$6;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2926
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2928
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabels()V

    .line 2931
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2933
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabels()V

    :cond_1
    return-void
.end method
