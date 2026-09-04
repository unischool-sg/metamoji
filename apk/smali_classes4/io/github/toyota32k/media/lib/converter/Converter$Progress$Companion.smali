.class public final Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;
.super Ljava/lang/Object;
.source "Converter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/converter/Converter$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;",
        "",
        "()V",
        "ENTRY_COUNT",
        "",
        "create",
        "Lio/github/toyota32k/media/lib/converter/Converter$Progress;",
        "durationUs",
        "",
        "trimmingRange",
        "Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "onProgress",
        "Lkotlin/Function1;",
        "Lio/github/toyota32k/media/lib/converter/IProgress;",
        "",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(JLio/github/toyota32k/media/lib/converter/TrimmingRange;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/media/lib/converter/Converter$Progress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/media/lib/converter/IProgress;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/media/lib/converter/Converter$Progress;"
        }
    .end annotation

    const-string v0, "trimmingRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 178
    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;-><init>(JLio/github/toyota32k/media/lib/converter/TrimmingRange;Lkotlin/jvm/functions/Function1;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
