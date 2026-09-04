.class Lcom/metamoji/forSchool/ui/ScScoreInfoView$5;
.super Ljava/lang/Object;
.source "ScScoreInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreInfoView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

.field final synthetic val$menuButton:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;Landroid/widget/TextView;)V
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

    .line 406
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$5;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$5;->val$menuButton:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 409
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$5;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$5;->val$menuButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->handleMenuButtonTap(Landroid/view/View;)V

    return-void
.end method
