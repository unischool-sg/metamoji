.class Lcom/metamoji/noteanytime/MainActivity$22$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$22;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$22;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1254
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$22$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1257
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_EXIST_HIDDEN_NOTES:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 1258
    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$22$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$22;

    iget-object v1, v1, Lcom/metamoji/noteanytime/MainActivity$22;->val$boxName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$22$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$22$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$22$1;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
