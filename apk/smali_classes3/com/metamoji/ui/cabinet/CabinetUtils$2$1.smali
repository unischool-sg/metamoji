.class Lcom/metamoji/ui/cabinet/CabinetUtils$2$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "CabinetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CabinetUtils$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/CabinetUtils$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 689
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CabinetUtils$2$1;->this$0:Lcom/metamoji/ui/cabinet/CabinetUtils$2;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

    return-void
.end method

.method static synthetic lambda$call$0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 692
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->reloadAllView(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils$2$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 692
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/CabinetUtils$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils$2$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    const/4 v0, 0x0

    return-object v0
.end method
