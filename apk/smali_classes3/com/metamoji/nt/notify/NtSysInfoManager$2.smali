.class Lcom/metamoji/nt/notify/NtSysInfoManager$2;
.super Ljava/lang/Object;
.source "NtSysInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateExec(ZLcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

.field final synthetic val$contents:Ljava/lang/String;

.field final synthetic val$ntAnytimeButton:Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/notify/NtSysInfoManager;Ljava/lang/String;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$2;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    iput-object p2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$2;->val$contents:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$2;->val$ntAnytimeButton:Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$2;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    iget-object v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$2;->val$contents:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$2;->val$ntAnytimeButton:Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getContentsCompleted(Ljava/lang/String;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    return-void
.end method
