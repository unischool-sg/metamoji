.class public final Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;
.super Ljava/lang/Object;
.source "AudioRemixer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/audio/AudioRemixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;",
        "",
        "()V",
        "DOWNMIX",
        "Lio/github/toyota32k/media/lib/audio/AudioRemixer;",
        "getDOWNMIX",
        "()Lio/github/toyota32k/media/lib/audio/AudioRemixer;",
        "PASSTHROUGH",
        "getPASSTHROUGH",
        "UPMIX",
        "getUPMIX",
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


# static fields
.field static final synthetic $$INSTANCE:Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;

.field private static final DOWNMIX:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

.field private static final PASSTHROUGH:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

.field private static final UPMIX:Lio/github/toyota32k/media/lib/audio/AudioRemixer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;-><init>()V

    sput-object v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->$$INSTANCE:Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;

    .line 9
    new-instance v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1;-><init>()V

    check-cast v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    sput-object v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->DOWNMIX:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    .line 34
    new-instance v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$UPMIX$1;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$UPMIX$1;-><init>()V

    check-cast v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    sput-object v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->UPMIX:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    .line 46
    new-instance v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$PASSTHROUGH$1;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$PASSTHROUGH$1;-><init>()V

    check-cast v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    sput-object v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->PASSTHROUGH:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDOWNMIX()Lio/github/toyota32k/media/lib/audio/AudioRemixer;
    .locals 1

    .line 9
    sget-object v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->DOWNMIX:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    return-object v0
.end method

.method public final getPASSTHROUGH()Lio/github/toyota32k/media/lib/audio/AudioRemixer;
    .locals 1

    .line 46
    sget-object v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->PASSTHROUGH:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    return-object v0
.end method

.method public final getUPMIX()Lio/github/toyota32k/media/lib/audio/AudioRemixer;
    .locals 1

    .line 34
    sget-object v0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->UPMIX:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    return-object v0
.end method
