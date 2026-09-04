.class public Lcom/metamoji/sd/SdConstants$SdUserStatus;
.super Ljava/lang/Object;
.source "SdConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/sd/SdConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdUserStatus"
.end annotation


# static fields
.field public static final MMJ_SD_USER_STATUS_NON_PARTICIPATING:I = 0x0

.field public static final MMJ_SD_USER_STATUS_PARTICIPATING:I = 0x1


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

    .line 19
    iput-object p1, p0, Lcom/metamoji/sd/SdConstants$SdUserStatus;->this$0:Lcom/metamoji/sd/SdConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
