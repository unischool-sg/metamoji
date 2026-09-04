.class Lcom/metamoji/un/text/UnTextUnitStateManager$2;
.super Ljava/lang/Object;
.source "UnTextUnitStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnitStateManager;->handleCollaboPropertyChanged(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnitStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$2;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 174
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->checkTargetLayer()V

    :cond_0
    return-void
.end method
