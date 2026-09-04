.class public Lcom/metamoji/sd/SdConstants$SdUserType;
.super Ljava/lang/Object;
.source "SdConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/sd/SdConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdUserType"
.end annotation


# static fields
.field public static final MMJ_SD_USER_TYPE_ADMIN:I = 0x2

.field public static final MMJ_SD_USER_TYPE_EDITOR:I = 0x0

.field public static final MMJ_SD_USER_TYPE_OWNER:I = 0x1

.field public static final MMJ_SD_USER_TYPE_VIEWER:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/SdConstants;


# direct methods
.method public constructor <init>(Lcom/metamoji/sd/SdConstants;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/metamoji/sd/SdConstants$SdUserType;->this$0:Lcom/metamoji/sd/SdConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
