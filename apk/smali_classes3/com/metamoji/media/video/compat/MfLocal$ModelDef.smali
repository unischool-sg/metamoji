.class public final Lcom/metamoji/media/video/compat/MfLocal$ModelDef;
.super Ljava/lang/Object;
.source "MfLocal.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/compat/MfLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelDef"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfLocal$ModelDef;",
        "",
        "<init>",
        "()V",
        "VERSION",
        "",
        "UUID",
        "FILE_NAME",
        "IDENTIFIER",
        "CREATION_DATE",
        "MODIFICATION_DATE",
        "DATA_SIZE",
        "SERVER_ID",
        "TITLE",
        "COMMENT",
        "SERVER_NAME",
        "SERVER_ID_ACTIVE",
        "LOCALFILE_STATUS",
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
.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final CREATION_DATE:Ljava/lang/String; = "creationDate"

.field public static final DATA_SIZE:Ljava/lang/String; = "dataSize"

.field public static final FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final IDENTIFIER:Ljava/lang/String; = "identifier"

.field public static final INSTANCE:Lcom/metamoji/media/video/compat/MfLocal$ModelDef;

.field public static final LOCALFILE_STATUS:Ljava/lang/String; = "status"

.field public static final MODIFICATION_DATE:Ljava/lang/String; = "modificationDate"

.field public static final SERVER_ID:Ljava/lang/String; = "serverID"

.field public static final SERVER_ID_ACTIVE:Ljava/lang/String; = "serverIDActive"

.field public static final SERVER_NAME:Ljava/lang/String; = "serverName"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final UUID:Ljava/lang/String; = "uuid"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/compat/MfLocal$ModelDef;

    invoke-direct {v0}, Lcom/metamoji/media/video/compat/MfLocal$ModelDef;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/compat/MfLocal$ModelDef;->INSTANCE:Lcom/metamoji/media/video/compat/MfLocal$ModelDef;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
