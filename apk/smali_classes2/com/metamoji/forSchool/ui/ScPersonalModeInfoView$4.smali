.class Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;
.super Ljava/lang/Object;
.source "ScPersonalModeInfoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->handleCancelButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 452
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;->this$0:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 455
    new-instance p1, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4$1;

    invoke-direct {p1, p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4$1;-><init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;)V

    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolAttentionEnd(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method
