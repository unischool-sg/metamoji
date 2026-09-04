.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$1;
.super Ljava/lang/Object;
.source "ScOfflineEditModeInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$1;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView$1;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->handleLabelTapped()V

    return-void
.end method
