.class public Lcom/metamoji/un/bgimage/UnBGImageUnit$ModelDef;
.super Lcom/metamoji/nt/NtUnitController$ModelDef;
.source "UnBGImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/bgimage/UnBGImageUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final BGCOLOR:Ljava/lang/String; = "bgColor"

.field public static final BGSTYLE:Ljava/lang/String; = "bgStyle"

.field public static final COLOR_OPACITY:Ljava/lang/String; = "colorOpacity"

.field public static final IMAGE_TICKET:Ljava/lang/String; = "imageTicket"

.field public static final OPACITY:Ljava/lang/String; = "opacity"

.field public static final VERSION_LATEST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/bgimage/UnBGImageUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/bgimage/UnBGImageUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit$ModelDef;->this$0:Lcom/metamoji/un/bgimage/UnBGImageUnit;

    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ModelDef;-><init>()V

    return-void
.end method
