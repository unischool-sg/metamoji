.class public Lcom/metamoji/df/controller/SettingsManager$ModelDef;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final OWNER_SETTINGS:Ljava/lang/String; = "settings"


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/controller/SettingsManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/metamoji/df/controller/SettingsManager$ModelDef;->this$0:Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
