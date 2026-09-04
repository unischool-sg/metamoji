.class Lcom/metamoji/nt/NtTextUnitSettings$1;
.super Ljava/util/HashMap;
.source "NtTextUnitSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextUnitSettings;->getDefaultValues()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    const p1, 0x3f99999a    # 1.2f

    .line 30
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v0, "textUnitLineHeight"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string/jumbo p1, "textUnitFontFamily"

    const-string v0, "Helvetica"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtTextUnitSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, 0x41400000    # 12.0f

    .line 32
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v0, "textUnitFontSize"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo p1, "textUnitRuledLineStyle"

    const-string v0, "none"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtTextUnitSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo p1, "textUnitBorderStyle"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtTextUnitSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo p1, "textUnitBackgroundColor"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtTextUnitSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 36
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v1, "textUnitBackgroundColorAlpha"

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/nt/NtTextUnitSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo p1, "textUnitFontColor"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtTextUnitSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
