.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$56;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->screenLockChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Z)V
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

    .line 5180
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$56;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$56;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 5183
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$56;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->dlgHeaderLayout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5184
    iget-boolean v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$56;->val$value:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xd1

    const/16 v2, 0x54

    const/16 v3, 0xff

    const/16 v4, 0x72

    .line 5185
    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5187
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method
