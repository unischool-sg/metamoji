.class Lcom/metamoji/mazec/InstallGuideActivity$3;
.super Ljava/lang/Object;
.source "InstallGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/InstallGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/InstallGuideActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/InstallGuideActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/metamoji/mazec/InstallGuideActivity$3;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/metamoji/mazec/InstallGuideActivity$3;->this$0:Lcom/metamoji/mazec/InstallGuideActivity;

    invoke-static {p1}, Lcom/metamoji/mazec/InstallGuideActivity;->-$$Nest$mshowSettings(Lcom/metamoji/mazec/InstallGuideActivity;)V

    return-void
.end method
