.class public final Lcom/metamoji/media/video/compat/MfMediaFiles$ModelDef;
.super Ljava/lang/Object;
.source "MfMediaFiles.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/compat/MfMediaFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelDef"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfMediaFiles$ModelDef;",
        "",
        "<init>",
        "()V",
        "OWNER",
        "",
        "SERVERNAME",
        "SERVERID",
        "LOCALID",
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
.field public static final INSTANCE:Lcom/metamoji/media/video/compat/MfMediaFiles$ModelDef;

.field public static final LOCALID:Ljava/lang/String; = "localID"

.field public static final OWNER:Ljava/lang/String; = "mediafiles"

.field public static final SERVERID:Ljava/lang/String; = "serverID"

.field public static final SERVERNAME:Ljava/lang/String; = "serverName"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/compat/MfMediaFiles$ModelDef;

    invoke-direct {v0}, Lcom/metamoji/media/video/compat/MfMediaFiles$ModelDef;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/compat/MfMediaFiles$ModelDef;->INSTANCE:Lcom/metamoji/media/video/compat/MfMediaFiles$ModelDef;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
