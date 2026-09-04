.class public final Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestCmd;
.super Ljava/lang/Object;
.source "NwServerAccessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/salvation/NwServerAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestCmd"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestCmd;",
        "",
        "<init>",
        "()V",
        "GETCLIPLIST",
        "",
        "RESERVE",
        "GETCLIPCOUNT",
        "GETCLIPINFO",
        "GETCOINFO",
        "GETPOSTERFRAME",
        "DELETECLIP",
        "GETSERVERSTATUS",
        "GETUPLOADPOINT",
        "EXPORTCLIPINFO",
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
.field public static final DELETECLIP:Ljava/lang/String; = "deleteclip"

.field public static final EXPORTCLIPINFO:Ljava/lang/String; = "exportclipinfo"

.field public static final GETCLIPCOUNT:Ljava/lang/String; = "getclipcount"

.field public static final GETCLIPINFO:Ljava/lang/String; = "getclipinfo"

.field public static final GETCLIPLIST:Ljava/lang/String; = "getlist"

.field public static final GETCOINFO:Ljava/lang/String; = "getcoinfo"

.field public static final GETPOSTERFRAME:Ljava/lang/String; = "getposterframe"

.field public static final GETSERVERSTATUS:Ljava/lang/String; = "getserverstatus"

.field public static final GETUPLOADPOINT:Ljava/lang/String; = "getuploadpoint"

.field public static final INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestCmd;

.field public static final RESERVE:Ljava/lang/String; = "reserve"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestCmd;

    invoke-direct {v0}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestCmd;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestCmd;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor$RestCmd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
