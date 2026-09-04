.class Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$3;
.super Ljava/lang/Object;
.source "ScPersonalModeInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;-><init>(Landroid/content/Context;)V
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

    .line 282
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$3;->this$0:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 285
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$3;->this$0:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->-$$Nest$mhandleNextButtonTap(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V

    return-void
.end method
