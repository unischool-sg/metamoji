.class public final Lcom/metamoji/ch/ChSizeKt;
.super Ljava/lang/Object;
.source "ChSize.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toChSize",
        "Lcom/metamoji/ch/ChSize;",
        "Landroid/util/SizeF;",
        "chart"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toChSize(Landroid/util/SizeF;)Lcom/metamoji/ch/ChSize;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/metamoji/ch/ChSize;

    invoke-direct {v0, p0}, Lcom/metamoji/ch/ChSize;-><init>(Landroid/util/SizeF;)V

    return-object v0
.end method
