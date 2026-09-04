.class Lcom/metamoji/noteanytime/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 704
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$11;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 707
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$11;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$fget_fxmanager(Lcom/metamoji/noteanytime/MainActivity;)Lcom/metamoji/ui/flexible/FxManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_ALL:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    return-void
.end method
