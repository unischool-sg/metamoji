.class Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender$1;
.super Ljava/lang/Object;
.source "UnDummyUnitContainerExtender.java"

# interfaces
.implements Lcom/metamoji/un/text/IUnTextSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;->handleAddTextUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;


# direct methods
.method constructor <init>(Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender$1;->this$0:Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextUnitBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, "#ffffff"

    return-object v0
.end method

.method public getTextUnitBackgroundColorAlpha()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextUnitBorderStyle()Ljava/lang/String;
    .locals 1

    .line 128
    const-string v0, "none"

    return-object v0
.end method

.method public getTextUnitFontColor()Ljava/lang/String;
    .locals 1

    .line 131
    const-string v0, "#000000"

    return-object v0
.end method

.method public getTextUnitFontFamily()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, ""

    return-object v0
.end method

.method public getTextUnitFontSize()F
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    return v0
.end method

.method public getTextUnitLineHeight()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTextUnitRuledLineStyle()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "line20"

    return-object v0
.end method

.method public getTextUnitVerticalWriting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTextUnitBackgroundColor(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitBackgroundColorAlpha(F)V
    .locals 0

    return-void
.end method

.method public setTextUnitBorderStyle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitFontColor(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitFontFamily(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitFontSize(F)V
    .locals 0

    return-void
.end method

.method public setTextUnitLineHeight(F)V
    .locals 0

    return-void
.end method

.method public setTextUnitRuledLineStyle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitVerticalWriting(Z)V
    .locals 0

    return-void
.end method
