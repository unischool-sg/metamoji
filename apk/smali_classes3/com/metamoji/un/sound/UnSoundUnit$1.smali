.class Lcom/metamoji/un/sound/UnSoundUnit$1;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$1;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 297
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit$1;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUnitStateManager;->addUnitInPage(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method
