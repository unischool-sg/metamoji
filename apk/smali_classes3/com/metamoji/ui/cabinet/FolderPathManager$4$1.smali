.class Lcom/metamoji/ui/cabinet/FolderPathManager$4$1;
.super Ljava/lang/Object;
.source "FolderPathManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/FolderPathManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/FolderPathManager$4;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/FolderPathManager$4;I)V
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

    .line 434
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$4$1;->this$1:Lcom/metamoji/ui/cabinet/FolderPathManager$4;

    iput p2, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$4$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$4$1;->this$1:Lcom/metamoji/ui/cabinet/FolderPathManager$4;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/FolderPathManager$4;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/FolderPathManager;->-$$Nest$fget_folderPathIcon(Lcom/metamoji/ui/cabinet/FolderPathManager;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$4$1;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
