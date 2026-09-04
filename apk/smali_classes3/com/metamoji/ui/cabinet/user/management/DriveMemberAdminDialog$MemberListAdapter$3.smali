.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$3;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

.field final synthetic val$scrollView:Landroid/widget/HorizontalScrollView;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;Landroid/widget/HorizontalScrollView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 169
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$3;->val$scrollView:Landroid/widget/HorizontalScrollView;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$3;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$3;->val$scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$3;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$3;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    :cond_0
    return-void
.end method
