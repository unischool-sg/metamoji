.class public final Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion$ModelProp;
.super Ljava/lang/Object;
.source "MediaFilesSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelProp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion$ModelProp;",
        "",
        "<init>",
        "()V",
        "CURRENTINDEX",
        "",
        "NOTUSE_PHOTOALBUM",
        "UPLOAD_SYNC_APP",
        "UPLOAD_ON_IDLE",
        "UPLOAD_ON_IDLE_SHAREONLY",
        "ALLOW_CELLULAR_ACCESS",
        "LIST_ORDER",
        "LIST_ORDERDIR",
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
.field public static final ALLOW_CELLULAR_ACCESS:Ljava/lang/String; = "allowCellularAccess"

.field public static final CURRENTINDEX:Ljava/lang/String; = "currentIndex"

.field public static final INSTANCE:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion$ModelProp;

.field public static final LIST_ORDER:Ljava/lang/String; = "listOrder"

.field public static final LIST_ORDERDIR:Ljava/lang/String; = "listOrderDIr"

.field public static final NOTUSE_PHOTOALBUM:Ljava/lang/String; = "notUsePhotoAlbum"

.field public static final UPLOAD_ON_IDLE:Ljava/lang/String; = "uploadOnIdle"

.field public static final UPLOAD_ON_IDLE_SHAREONLY:Ljava/lang/String; = "uploadOnIdleShareOnly"

.field public static final UPLOAD_SYNC_APP:Ljava/lang/String; = "uploadSynchronizeApp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion$ModelProp;

    invoke-direct {v0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion$ModelProp;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion$ModelProp;->INSTANCE:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion$ModelProp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
