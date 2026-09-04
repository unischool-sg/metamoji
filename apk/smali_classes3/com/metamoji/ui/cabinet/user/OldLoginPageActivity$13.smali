.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$13;
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

    .line 730
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$13;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 733
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$13;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iget-boolean v0, p1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$mswitchLoginMode(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Z)V

    return-void
.end method
