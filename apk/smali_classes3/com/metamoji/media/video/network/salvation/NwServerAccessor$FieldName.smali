.class public final Lcom/metamoji/media/video/network/salvation/NwServerAccessor$FieldName;
.super Ljava/lang/Object;
.source "NwServerAccessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/salvation/NwServerAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldName"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/salvation/NwServerAccessor$FieldName;",
        "",
        "<init>",
        "()V",
        "USER_ID",
        "",
        "COMPANYID",
        "LONGIN_USER",
        "LONGIN_COMPANY",
        "PASSWORD",
        "LONGINED_QWD",
        "ROOT_SERVER",
        "PRODUCT_NAME",
        "PRODUCT_VERSION",
        "SERVER_ID",
        "JSON_OPTION",
        "ACCESS_TOKEN",
        "REFRESH_TOKEN",
        "LOCALDEVICEID",
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
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final COMPANYID:Ljava/lang/String; = "companyId"

.field public static final INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor$FieldName;

.field public static final JSON_OPTION:Ljava/lang/String; = "option"

.field public static final LOCALDEVICEID:Ljava/lang/String; = "localDeviceId"

.field public static final LONGINED_QWD:Ljava/lang/String; = "loginedQwd"

.field public static final LONGIN_COMPANY:Ljava/lang/String; = "loginCompany"

.field public static final LONGIN_USER:Ljava/lang/String; = "loginUser"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PRODUCT_NAME:Ljava/lang/String; = "productName"

.field public static final PRODUCT_VERSION:Ljava/lang/String; = "productVersion"

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"

.field public static final ROOT_SERVER:Ljava/lang/String; = "rootServer"

.field public static final SERVER_ID:Ljava/lang/String; = "serverId"

.field public static final USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$FieldName;

    invoke-direct {v0}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$FieldName;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$FieldName;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor$FieldName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
