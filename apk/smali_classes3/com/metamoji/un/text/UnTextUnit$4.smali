.class Lcom/metamoji/un/text/UnTextUnit$4;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1811
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$4;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1814
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnit$4;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->addTextUnitInPage(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method
