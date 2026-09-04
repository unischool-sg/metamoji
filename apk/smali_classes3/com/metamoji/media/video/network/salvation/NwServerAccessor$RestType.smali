.class public final Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestType;
.super Ljava/lang/Object;
.source "NwServerAccessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/salvation/NwServerAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestType"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestType;",
        "",
        "<init>",
        "()V",
        "MOVIE",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestType;

.field public static final MOVIE:Ljava/lang/String; = "type=MOVIE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestType;

    invoke-direct {v0}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestType;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestType;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
