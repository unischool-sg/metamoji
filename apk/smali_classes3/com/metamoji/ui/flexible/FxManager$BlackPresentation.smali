.class Lcom/metamoji/ui/flexible/FxManager$BlackPresentation;
.super Landroid/app/Presentation;
.source "FxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/flexible/FxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlackPresentation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/flexible/FxManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/flexible/FxManager;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxManager$BlackPresentation;->this$0:Lcom/metamoji/ui/flexible/FxManager;

    .line 84
    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget p1, Lcom/metamoji/noteanytime/R$layout;->external_display:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxManager$BlackPresentation;->setContentView(I)V

    return-void
.end method
