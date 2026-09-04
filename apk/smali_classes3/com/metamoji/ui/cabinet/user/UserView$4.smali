.class Lcom/metamoji/ui/cabinet/user/UserView$4;
.super Ljava/lang/Object;
.source "UserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/UserView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/UserView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/UserView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView$4;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView$4;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    const-string v0, "about_cabinet"

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Main_Whats:I

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/cabinet/user/UserView;->-$$Nest$mjumpURL(Lcom/metamoji/ui/cabinet/user/UserView;Ljava/lang/String;I)V

    return-void
.end method
