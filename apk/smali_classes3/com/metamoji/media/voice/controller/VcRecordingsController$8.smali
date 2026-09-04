.class Lcom/metamoji/media/voice/controller/VcRecordingsController$8;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromDate(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$dlg:Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;


# direct methods
.method public static synthetic $r8$lambda$cmxZGmaLiIn_Oy59Dc8Jxzh8HYY(Lcom/metamoji/media/voice/controller/VcRecordingsController$8;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController$8;->lambda$onDialogClosed$0(Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 834
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$8;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$8;->val$dlg:Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDialogClosed$0(Ljava/util/Date;Ljava/lang/String;)V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$8;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromDate(Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 4

    if-eqz p3, :cond_0

    .line 838
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$8;->val$dlg:Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcSelectRecordingsDialog;->getSelectItem()Ljava/util/Map;

    move-result-object p1

    .line 839
    const-string p2, "$ticket"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 840
    const-string p3, "$startDate"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 842
    new-instance p3, Ljava/util/Date;

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-long v0, v2

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 843
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController$8$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/voice/controller/VcRecordingsController$8;Ljava/util/Date;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnBackground(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
