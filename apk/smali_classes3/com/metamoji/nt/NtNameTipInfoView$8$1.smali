.class Lcom/metamoji/nt/NtNameTipInfoView$8$1;
.super Ljava/util/TimerTask;
.source "NtNameTipInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtNameTipInfoView$8;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$labelInfo:Lcom/metamoji/nt/NtNameTipLabelInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView$8;Ljava/util/Map$Entry;Lcom/metamoji/nt/NtNameTipLabelInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$8$1;->this$1:Lcom/metamoji/nt/NtNameTipInfoView$8;

    iput-object p2, p0, Lcom/metamoji/nt/NtNameTipInfoView$8$1;->val$entry:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/metamoji/nt/NtNameTipInfoView$8$1;->val$labelInfo:Lcom/metamoji/nt/NtNameTipLabelInfo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 576
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipInfoView$8$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNameTipInfoView$8$1$1;-><init>(Lcom/metamoji/nt/NtNameTipInfoView$8$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
