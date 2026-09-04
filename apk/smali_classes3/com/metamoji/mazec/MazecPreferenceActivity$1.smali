.class Lcom/metamoji/mazec/MazecPreferenceActivity$1;
.super Ljava/lang/Object;
.source "MazecPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/MazecPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/MazecPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/MazecPreferenceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity$1;->this$0:Lcom/metamoji/mazec/MazecPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity$1;->this$0:Lcom/metamoji/mazec/MazecPreferenceActivity;

    invoke-static {p1}, Lcom/metamoji/mazec/CheckUpdateActivity;->startActivityForUserOperation(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method
