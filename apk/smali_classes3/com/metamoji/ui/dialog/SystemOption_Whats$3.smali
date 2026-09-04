.class Lcom/metamoji/ui/dialog/SystemOption_Whats$3;
.super Ljava/lang/Object;
.source "SystemOption_Whats.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/SystemOption_Whats;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/SystemOption_Whats;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/SystemOption_Whats;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption_Whats$3;->this$0:Lcom/metamoji/ui/dialog/SystemOption_Whats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption_Whats$3;->this$0:Lcom/metamoji/ui/dialog/SystemOption_Whats;

    const-string v0, "about"

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Button_Title_AboutUs:I

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/dialog/SystemOption_Whats;->-$$Nest$mjumpURL(Lcom/metamoji/ui/dialog/SystemOption_Whats;Ljava/lang/String;I)V

    return-void
.end method
