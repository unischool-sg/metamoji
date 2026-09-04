.class Lcom/metamoji/un/sound/UnSoundUnit$2$1;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/sound/UnSoundUnit$2;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 635
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$2$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 638
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/un/sound/UnSoundUnit$2$1$1;

    invoke-direct {p2, p0}, Lcom/metamoji/un/sound/UnSoundUnit$2$1$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnit$2$1;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
