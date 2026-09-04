.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$7;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 628
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$7;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 633
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$7;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->_this:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$mhandleLoginButtonTap(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method
