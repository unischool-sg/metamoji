.class Lcom/metamoji/ui/ImportActivity$9$1;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/ImportActivity$9;

.field final synthetic val$docID:Ljava/lang/String;

.field final synthetic val$errorCode:Ljava/lang/Integer;

.field final synthetic val$errorInfo:Lcom/metamoji/cv/CvResult$Import;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$pbe:Lcom/metamoji/cm/PBE;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ImportActivity$9;Ljava/lang/String;Lcom/metamoji/cm/PBE;Ljava/lang/String;Lcom/metamoji/cv/CvResult$Import;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 576
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$9$1;->this$1:Lcom/metamoji/ui/ImportActivity$9;

    iput-object p2, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$docID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$pbe:Lcom/metamoji/cm/PBE;

    iput-object p4, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$errorMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$errorInfo:Lcom/metamoji/cv/CvResult$Import;

    iput-object p6, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$errorCode:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 579
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$docID:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 580
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9$1;->this$1:Lcom/metamoji/ui/ImportActivity$9;

    iget-object v1, v1, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    const-class v2, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    const-string v1, "command"

    const-string v2, "editImportedNote"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v1, "docid"

    iget-object v2, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$docID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$pbe:Lcom/metamoji/cm/PBE;

    if-eqz v1, :cond_0

    .line 584
    const-string v2, "pbe"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x4000000

    .line 591
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 592
    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9$1;->this$1:Lcom/metamoji/ui/ImportActivity$9;

    iget-object v1, v1, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v2, p0, Lcom/metamoji/ui/ImportActivity$9$1;->this$1:Lcom/metamoji/ui/ImportActivity$9;

    iget-object v2, v2, Lcom/metamoji/ui/ImportActivity$9;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$mgetSrcInfo(Lcom/metamoji/ui/ImportActivity;Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 594
    const-string/jumbo v2, "srcInfo"

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/ImportActivity$9$1;->this$1:Lcom/metamoji/ui/ImportActivity$9;

    iget-object v1, v1, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/ImportActivity;->startActivity(Landroid/content/Intent;)V

    .line 599
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9$1;->this$1:Lcom/metamoji/ui/ImportActivity$9;

    iget-object v0, v0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/ImportActivity;->finish()V

    return-void

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$errorMessage:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 601
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9$1;->this$1:Lcom/metamoji/ui/ImportActivity$9;

    iget-object v0, v0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$errorMessage:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$monFailure(Lcom/metamoji/ui/ImportActivity;ZLjava/lang/String;I)V

    return-void

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9$1;->val$errorCode:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY_INVALID_COMPANYID:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Load_Note_Invalid_CompanyId:I

    .line 609
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/ImportActivity$9$1;->this$1:Lcom/metamoji/ui/ImportActivity$9;

    iget-object v0, v0, Lcom/metamoji/ui/ImportActivity$9;->this$0:Lcom/metamoji/ui/ImportActivity;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/metamoji/ui/ImportActivity;->-$$Nest$monFailure(Lcom/metamoji/ui/ImportActivity;ZLjava/lang/String;I)V

    return-void
.end method
