.class Lcom/metamoji/ui/cabinet/ShareViewActivity$7;
.super Ljava/lang/Object;
.source "ShareViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 262
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$7;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_fxmanager(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Lcom/metamoji/ui/flexible/FxManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_ALL:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    return-void
.end method
