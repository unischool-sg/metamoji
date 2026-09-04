.class Lcom/metamoji/media/ui/UnMediaPlayer$16;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->tappedReRecordButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/UnMediaPlayer;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 492
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$16;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 495
    sget v0, Lcom/metamoji/noteanytime/R$string;->SOUND_UNIT_RERECORD_ALERT:I

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer$16$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/ui/UnMediaPlayer$16$1;-><init>(Lcom/metamoji/media/ui/UnMediaPlayer$16;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
