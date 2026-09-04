.class Lcom/metamoji/media/voice/controller/VcRecordingsController$25;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handlePreferences(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2411
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$25;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2414
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;

    invoke-direct {v0}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;-><init>()V

    .line 2415
    const-string v1, "VcPreferences"

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPreferencesDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
