.class Lcom/metamoji/noteanytime/MainActivity$24;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1938
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$24;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1941
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$24;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_addmenu:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1943
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$24;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    invoke-static {v1}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$fget_fxmanager(Lcom/metamoji/noteanytime/MainActivity;)Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/flexible/FxManager;->isEnabledCabinetAddMenu()Z

    move-result v1

    .line 1944
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1945
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method
