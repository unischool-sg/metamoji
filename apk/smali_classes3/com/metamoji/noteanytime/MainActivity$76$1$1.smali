.class Lcom/metamoji/noteanytime/MainActivity$76$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$76$1;->onCompletion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$76$1;

.field final synthetic val$participationCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$76$1;Ljava/lang/String;)V
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

    .line 5658
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$76$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$76$1;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$76$1$1;->val$participationCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5661
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$76$1$1;->val$participationCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$76$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$76$1;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$76$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$76;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$76;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$76$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$76$1;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$76$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$76;

    iget-object v2, v2, Lcom/metamoji/noteanytime/MainActivity$76;->val$driveName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->showBoxParticipationCodeDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
