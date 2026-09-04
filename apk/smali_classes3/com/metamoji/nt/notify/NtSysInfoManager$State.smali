.class public Lcom/metamoji/nt/notify/NtSysInfoManager$State;
.super Ljava/lang/Object;
.source "NtSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/notify/NtSysInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# static fields
.field public static final ERROR:I = 0x2

.field public static final LOADED:I = 0x1

.field public static final LOADING:I = 0x0

.field public static final OFFLINE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/notify/NtSysInfoManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$State;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
