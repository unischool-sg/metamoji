.class public final Lcom/metamoji/ch/internal/ChNumberFormatter;
.super Ljava/lang/Object;
.source "ChNumberFormatter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/ChNumberFormatter;",
        "",
        "<init>",
        "()V",
        "_fractionDigits",
        "",
        "core",
        "Ljava/text/DecimalFormat;",
        "value",
        "fractionDigits",
        "getFractionDigits",
        "()I",
        "setFractionDigits",
        "(I)V",
        "stringFrom",
        "",
        "number",
        "",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _fractionDigits:I

.field private core:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 13
    iget v2, p0, Lcom/metamoji/ch/internal/ChNumberFormatter;->_fractionDigits:I

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 14
    iget v2, p0, Lcom/metamoji/ch/internal/ChNumberFormatter;->_fractionDigits:I

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 15
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 11
    iput-object v0, p0, Lcom/metamoji/ch/internal/ChNumberFormatter;->core:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public final getFractionDigits()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/metamoji/ch/internal/ChNumberFormatter;->_fractionDigits:I

    return v0
.end method

.method public final setFractionDigits(I)V
    .locals 1

    .line 23
    iput p1, p0, Lcom/metamoji/ch/internal/ChNumberFormatter;->_fractionDigits:I

    .line 24
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChNumberFormatter;->core:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 25
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChNumberFormatter;->core:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public final stringFrom(D)Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChNumberFormatter;->core:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
