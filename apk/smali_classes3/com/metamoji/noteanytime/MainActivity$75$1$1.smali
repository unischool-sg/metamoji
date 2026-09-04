.class Lcom/metamoji/noteanytime/MainActivity$75$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$75$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$75$1;

.field final synthetic val$driveName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$75$1;Ljava/lang/String;)V
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

    .line 5635
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$75$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$75$1;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$75$1$1;->val$driveName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5638
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$75$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$75$1;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$75$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$75;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$75;->val$driveId:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->setAllowToParticipateBox(Ljava/lang/String;Z)V

    .line 5639
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$75$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$75$1;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$75$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$75;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$75;->val$driveId:Ljava/lang/String;

    iget-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$75$1$1;->val$driveName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->displayParticipationCodeInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
