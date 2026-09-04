.class Lcom/metamoji/noteanytime/MainActivity$22$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$22$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/noteanytime/MainActivity$22$1;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$22$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$22$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$22$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1263
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$22$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$22$1;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$22$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$22;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$22;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    iget-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$22$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$22$1;

    iget-object p2, p2, Lcom/metamoji/noteanytime/MainActivity$22$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$22;

    iget-object p2, p2, Lcom/metamoji/noteanytime/MainActivity$22;->val$driveId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$22$1$1;->this$2:Lcom/metamoji/noteanytime/MainActivity$22$1;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$22$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$22;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$22;->val$boxName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$mdeleteAllTagsFromHiddenNotes(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
